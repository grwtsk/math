# kleeneAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19136fab7933e1e6b727486ca347e6173d0806fc75d5caa0b257a5fb330394c5",
  "kind": "def",
  "lexical_name": "kleeneAlgebra",
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
  "slug": "kleenealgebra--8987113a995b9ee9b4dbbd4a",
  "source": {
    "blob": "e997a9d785530c4423087c71dd2b3ce3229ba11a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 389,
    "path": "GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8987113a995b9ee9b4dbbd4acedad3bd104f1a3e37771a8d61cde700e59aab7b",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19136fab7933e1e6b727486ca347e6173d0806fc75d5caa0b257a5fb330394c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def kleeneAlgebra [KleeneAlgebra α] [Zero β] [One β] [Add β] [Mul β] [Pow β ℕ] [SMul ℕ β]
    [NatCast β] [Sup β] [Bot β] [KStar β] (f : β → α) (hf : Injective f) (zero : f 0 = 0)
    (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) (sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (bot : f ⊥ = ⊥)
    (kstar : ∀ a, f a∗ = (f a)∗) : KleeneAlgebra β :=
  { hf.idemSemiring f zero one add mul nsmul npow nat_cast sup bot,
    ‹KStar β› with
    one_le_kstar := fun a ↦ one.trans_le <| by
      erw [kstar]
      exact one_le_kstar
    mul_kstar_le_kstar := fun a ↦ by
      change f _ ≤ _
      erw [mul, kstar]
      exact mul_kstar_le_kstar
    kstar_mul_le_kstar := fun a ↦ by
      change f _ ≤ _
      erw [mul, kstar]
      exact kstar_mul_le_kstar
    mul_kstar_le_self := fun a b (h : f _ ≤ _) ↦ by
      change f _ ≤ _
      erw [mul, kstar]
      erw [mul] at h
      exact mul_kstar_le_self h
    kstar_mul_le_self := fun a b (h : f _ ≤ _) ↦ by
      change f _ ≤ _
      erw [mul, kstar]
      erw [mul] at h
      exact kstar_mul_le_self h }
#align function.injective.kleene_algebra Function.Injective.kleeneAlgebra

end Function.Injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e997a9d785530c4423087c71dd2b3ce3229ba11a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
