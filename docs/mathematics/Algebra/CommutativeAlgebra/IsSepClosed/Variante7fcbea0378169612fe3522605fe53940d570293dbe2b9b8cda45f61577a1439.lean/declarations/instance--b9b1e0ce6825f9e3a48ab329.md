# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c67b1b8ec5396ed88523752e42c96bde48be13b535e275dd3cbdf27d54893a3a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b9b1e0ce6825f9e3a48ab329",
  "source": {
    "blob": "03c0065f44cc517ece88df6ea876d1768b0d32fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 133,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9b1e0ce6825f9e3a48ab32955d6871d046c8f3a218b362e846039a7316d7061",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c67b1b8ec5396ed88523752e42c96bde48be13b535e275dd3cbdf27d54893a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) isAlgClosed_of_perfectField [IsSepClosed k] [PerfectField k] :
    IsAlgClosed k :=
  IsAlgClosed.of_exists_root k fun p _ h ↦ exists_root p ((degree_pos_of_irreducible h).ne')
    (PerfectField.separable_of_irreducible h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c0065f44cc517ece88df6ea876d1768b0d32fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
