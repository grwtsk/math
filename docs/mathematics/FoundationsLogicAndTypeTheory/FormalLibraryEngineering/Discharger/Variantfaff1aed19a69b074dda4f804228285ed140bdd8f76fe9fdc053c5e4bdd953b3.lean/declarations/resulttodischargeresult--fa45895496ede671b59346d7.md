# resultToDischargeResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f237f98c85b67fc690cfb4cb48b69d67d1e76d7a6bf7eb8e071e7b85b8fea6f",
  "kind": "def",
  "lexical_name": "resultToDischargeResult",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "resulttodischargeresult--fa45895496ede671b59346d7",
  "source": {
    "blob": "aaf5c1f9127ce5af84dd38e10791ac38b91aad1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa45895496ede671b59346d7245bddf9117d4058213fec9ad720cd51d8dcd724",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f237f98c85b67fc690cfb4cb48b69d67d1e76d7a6bf7eb8e071e7b85b8fea6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resultToDischargeResult (e : Expr) (result : Result) : DischargeResult :=
  match result with
  | .rfl _ cd => .failed cd
  | .step e' h _ cd =>
    if e'.isTrue then
      .solved (mkOfEqTrueCore e h) cd
    else
      .failed cd

/--
Converts a simplification procedure into a discharger.

A `Simproc` can be used as a discharger by simplifying the side condition and
checking if it reduces to `True`. If so, the equality proof is converted to
a proof of the original proposition.

**Algorithm**:
1. Apply the simproc to the side condition `e`
2. If `e` simplifies to `True` (via proof `h : e = True`), return `ofEqTrue h : e`
3. Otherwise, return `.failed` (cannot discharge)

**Parameters**:
- `p`: A simplification procedure to use for discharging conditions

**Example**: If `p` simplifies `5 < 10` to `True` via proof `h : (5 < 10) = True`,
then `mkDischargerFromSimproc p` returns `ofEqTrue h : 5 < 10`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf5c1f9127ce5af84dd38e10791ac38b91aad1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
