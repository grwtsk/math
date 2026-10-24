# Units.pow_ofPowEqOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbf0851d-6b02-8062-cb63-7424bc91aaf8",
  "kind": "theorem",
  "lexical_name": "Units.pow_ofPowEqOne",
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
  "slug": "units-pow-ofpoweqone--0ff8a50b1499f21859311504",
  "source": {
    "blob": "93e48c115a1b5b62b7930981447cbd1f44e2729c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variante7ca6e56d72f285c3e11b68227f7245a1d8b8eaf7844a5fc1b4c128a9b394454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ff8a50b1499f21859311504b2b88f86880e6178f57203951fb67769e1b6e41b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variante7ca6e56d72f285c3e11b68227f7245a1d8b8eaf7844a5fc1b4c128a9b394454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbf0851d-6b02-8062-cb63-7424bc91aaf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Units.pow_ofPowEqOne {x : M} {n : ℕ} (hx : x ^ n = 1) (hn : n ≠ 0) :
    Units.ofPowEqOne x n hx hn ^ n = 1 :=
  Units.ext <| by simp [hx]
#align units.pow_of_pow_eq_one Units.pow_ofPowEqOne
#align add_units.nsmul_of_nsmul_eq_zero AddUnits.nsmul_ofNSMulEqZero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variante7ca6e56d72f285c3e11b68227f7245a1d8b8eaf7844a5fc1b4c128a9b394454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variante7ca6e56d72f285c3e11b68227f7245a1d8b8eaf7844a5fc1b4c128a9b394454.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e48c115a1b5b62b7930981447cbd1f44e2729c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
