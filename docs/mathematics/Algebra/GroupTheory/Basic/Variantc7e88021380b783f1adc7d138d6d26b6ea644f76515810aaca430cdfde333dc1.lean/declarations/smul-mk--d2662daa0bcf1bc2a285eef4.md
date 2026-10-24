# smul_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16b99e77-e0fa-2f2c-3bb5-b0c7c6468a36",
  "kind": "theorem",
  "lexical_name": "smul_mk",
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
  "slug": "smul-mk--d2662daa0bcf1bc2a285eef4",
  "source": {
    "blob": "b83606c1e05621758450a1774bf36496570d96a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 362,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2662daa0bcf1bc2a285eef4c4646e7525b7d6c5551ac77ecaf15d6da93ef3bb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16b99e77-e0fa-2f2c-3bb5-b0c7c6468a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mk [SMul R M] [IsScalarTower R M M] (c : R) (a b) :
    c • (mk a b : Localization S) = mk (c • a) b := by
  rw [mk, mk, ← OreLocalization.smul_one_oreDiv_one_smul, OreLocalization.oreDiv_smul_oreDiv]
  change (c • 1) • a /ₒ (b * 1) = _
  rw [smul_assoc, one_smul, mul_one]

-- Note: Previously there was a `MulDistribMulAction R (Localization S)`.
-- It was removed as it is not the correct action.

end Scalar

end Localization

variable {S N}

namespace MonoidHom

/-- Makes a localization map from a `CommMonoid` hom satisfying the characteristic predicate. -/
@[to_additive /-- Makes a localization map from an `AddCommMonoid` hom satisfying the
characteristic predicate. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc7e88021380b783f1adc7d138d6d26b6ea644f76515810aaca430cdfde333dc1.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83606c1e05621758450a1774bf36496570d96a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
