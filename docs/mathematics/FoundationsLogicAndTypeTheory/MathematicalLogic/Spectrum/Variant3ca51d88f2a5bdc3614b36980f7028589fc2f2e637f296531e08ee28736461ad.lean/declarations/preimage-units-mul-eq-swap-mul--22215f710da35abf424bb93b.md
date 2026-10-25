# preimage_units_mul_eq_swap_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e99121f-04d4-4d23-e26f-adab03f0703a",
  "kind": "theorem",
  "lexical_name": "preimage_units_mul_eq_swap_mul",
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
  "slug": "preimage-units-mul-eq-swap-mul--22215f710da35abf424bb93b",
  "source": {
    "blob": "0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22215f710da35abf424bb93b1faf8dda7604ab0d9b3464e5e636d9389627d7a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e99121f-04d4-4d23-e26f-adab03f0703a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_units_mul_eq_swap_mul {a b : A} :
    ((↑) : Rˣ → R) ⁻¹' σ (a * b) = (↑) ⁻¹' σ (b * a) :=
  Set.ext fun _ => unit_mem_mul_iff_mem_swap_mul
#align spectrum.preimage_units_mul_eq_swap_mul spectrum.preimage_units_mul_eq_swap_mul

section Star

variable [InvolutiveStar R] [StarRing A] [StarModule R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
