# sacEntry_conjugate_hammingIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:347933df-35b8-c8aa-86de-776223f486da",
  "kind": "theorem",
  "lexical_name": "sacEntry_conjugate_hammingIso",
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
  "slug": "sacentry-conjugate-hammingiso--dbd61cdf9b045e39524ebe2a",
  "source": {
    "blob": "f2009fd9780bcdddc8e081e1794f17173b45d587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 451,
    "path": "GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd61cdf9b045e39524ebe2a72a4bae366f74be4b7f14a76432733120021a5ca",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:347933df-35b8-c8aa-86de-776223f486da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sacEntry_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i j : Fin n) :
    sacEntry (conjugate g.toPerm H) i j =
      sacEntry H (g.coordinates.symm i) (g.coordinates.symm j) := by
  simp only [sacEntry, sacCount_conjugate_hammingIso]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2009fd9780bcdddc8e081e1794f17173b45d587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
