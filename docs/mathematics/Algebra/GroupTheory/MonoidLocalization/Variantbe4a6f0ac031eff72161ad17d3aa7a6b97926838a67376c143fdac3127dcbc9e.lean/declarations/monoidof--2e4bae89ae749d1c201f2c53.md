# monoidOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10101ce2bee65f762c069e43442dacd6eb7130d1d16e39ec13fadff4cd4fe7cf",
  "kind": "def",
  "lexical_name": "monoidOf",
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
  "slug": "monoidof--2e4bae89ae749d1c201f2c53",
  "source": {
    "blob": "d763b5e7340438b0e55f07a622ee474b3f3cc701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1644,
    "line": 1625,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e4bae89ae749d1c201f2c535b72c4fce8901d1c29233760ba95ae7fadf5f51b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10101ce2bee65f762c069e43442dacd6eb7130d1d16e39ec13fadff4cd4fe7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1625–1644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidOf : Submonoid.LocalizationMap S (Localization S) :=
  { (r S).mk'.comp <| MonoidHom.inl M
        S with
    toFun := fun x ↦ mk x 1
    map_one' := mk_one
    map_mul' := fun x y ↦ by dsimp only; rw [mk_mul, mul_one]
    map_units' := fun y ↦
      isUnit_iff_exists_inv.2 ⟨mk 1 y, by dsimp only; rw [mk_mul, mul_one, one_mul, mk_self]⟩
    surj' := fun z ↦ induction_on z fun x ↦
      ⟨x, by dsimp only; rw [mk_mul, mul_comm x.fst, ← mk_mul, mk_self, one_mul]⟩
    eq_iff_exists' := fun x y ↦
      mk_eq_mk_iff.trans <|
        r_iff_exists.trans <|
          show (∃ c : S, ↑c * (1 * x) = c * (1 * y)) ↔ _ by rw [one_mul, one_mul] }
#align localization.monoid_of Localization.monoidOf
#align add_localization.add_monoid_of AddLocalization.addMonoidOf

variable {S}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean#L1625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d763b5e7340438b0e55f07a622ee474b3f3cc701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
