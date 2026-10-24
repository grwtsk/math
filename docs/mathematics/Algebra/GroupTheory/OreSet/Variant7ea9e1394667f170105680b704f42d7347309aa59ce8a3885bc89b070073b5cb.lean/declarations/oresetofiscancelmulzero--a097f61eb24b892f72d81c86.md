# oreSetOfIsCancelMulZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b16d9a4340518136f7b335e27f95be6ce160dc4e8c231abdda5b11b71bda92d",
  "kind": "def",
  "lexical_name": "oreSetOfIsCancelMulZero",
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
  "slug": "oresetofiscancelmulzero--a097f61eb24b892f72d81c86",
  "source": {
    "blob": "cdf4ffe811c5a5d87bcb020d19ef4264e8cea0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Algebra/GroupTheory/OreSet/Variant7ea9e1394667f170105680b704f42d7347309aa59ce8a3885bc89b070073b5cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a097f61eb24b892f72d81c8622db16c351a40a5a5bce661c4317dda3881d5cbb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OreSet/Variant7ea9e1394667f170105680b704f42d7347309aa59ce8a3885bc89b070073b5cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b16d9a4340518136f7b335e27f95be6ce160dc4e8c231abdda5b11b71bda92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oreSetOfIsCancelMulZero {R : Type*} [MonoidWithZero R] [IsCancelMulZero R]
    {S : Submonoid R} (oreNum : R → S → R) (oreDenom : R → S → S)
    (ore_eq : ∀ (r : R) (s : S), oreDenom r s * r = oreNum r s * s) : OreSet S :=
  { ore_right_cancel := fun _ _ s h => ⟨s, mul_eq_mul_left_iff.mpr (mul_eq_mul_right_iff.mp h)⟩
    oreNum
    oreDenom
    ore_eq }

/-- In rings without zero divisors, the first (cancellability) condition is always fulfilled,
it suffices to give a proof for the Ore condition itself. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OreSet/Variant7ea9e1394667f170105680b704f42d7347309aa59ce8a3885bc89b070073b5cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OreSet/Variant7ea9e1394667f170105680b704f42d7347309aa59ce8a3885bc89b070073b5cb.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf4ffe811c5a5d87bcb020d19ef4264e8cea0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
