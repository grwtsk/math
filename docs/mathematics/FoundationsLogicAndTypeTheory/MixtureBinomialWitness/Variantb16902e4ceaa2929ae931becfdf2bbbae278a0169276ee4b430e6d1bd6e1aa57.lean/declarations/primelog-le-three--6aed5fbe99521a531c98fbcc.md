# primeLog_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1d48d64-7ed0-c323-d755-2ca07f3fd35f",
  "kind": "theorem",
  "lexical_name": "primeLog_le_three",
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
  "slug": "primelog-le-three--6aed5fbe99521a531c98fbcc",
  "source": {
    "blob": "a309fe9b8a409c5ecdeaa6abbb9b5e165097a144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aed5fbe99521a531c98fbccb2b5be03faa6ed434027e3c75bc39f02fbc8fa8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1d48d64-7ed0-c323-d755-2ca07f3fd35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLog_le_three (p : Fin 2) : primeLog p ≤ Real.log 3 := by
  fin_cases p
  · exact Real.log_le_log (by norm_num) (by norm_num)
  · exact le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a309fe9b8a409c5ecdeaa6abbb9b5e165097a144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
