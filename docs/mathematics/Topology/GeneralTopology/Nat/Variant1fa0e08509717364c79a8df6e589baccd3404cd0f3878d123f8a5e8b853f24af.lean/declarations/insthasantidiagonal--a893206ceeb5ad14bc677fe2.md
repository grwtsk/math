# instHasAntidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe4220a7b46805fc642c49db7823c27e0ea548bf32a77f31644fe0a5cd5f3f92",
  "kind": "instance",
  "lexical_name": "instHasAntidiagonal",
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
  "slug": "insthasantidiagonal--a893206ceeb5ad14bc677fe2",
  "source": {
    "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a893206ceeb5ad14bc677fe2bf7466b753065e16fe76e73f404cc10d8987fe23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe4220a7b46805fc642c49db7823c27e0ea548bf32a77f31644fe0a5cd5f3f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHasAntidiagonal : Finset.HasAntidiagonal (Additive ℕ+) :=
  /- The set of divisors of a positive natural number.
This is `Nat.divisorsAntidiagonal` without a special case for `n = 0`. -/
  let divisorsAntidiagonal (n : ℕ+) : Finset (ℕ+ × ℕ+) :=
    (Nat.divisorsAntidiagonal n).attach.map
      ⟨fun x =>
        (⟨x.val.1, Nat.pos_of_mem_divisors <| Nat.fst_mem_divisors_of_mem_antidiagonal x.prop⟩,
        ⟨x.val.2, Nat.pos_of_mem_divisors <| Nat.snd_mem_divisors_of_mem_antidiagonal x.prop⟩),
      fun _ _ h => Subtype.ext <| Prod.ext (congr_arg (·.1.val) h) (congr_arg (·.2.val) h)⟩
  have mem_divisorsAntidiagonal {n : ℕ+} (x : ℕ+ × ℕ+) :
    x ∈ divisorsAntidiagonal n ↔ x.1 * x.2 = n := by
    simp_rw [divisorsAntidiagonal, Finset.mem_map, Finset.mem_attach, Function.Embedding.coeFn_mk,
      Prod.ext_iff, true_and, ← coe_inj, Subtype.exists]
    simp
  { antidiagonal := fun n ↦ divisorsAntidiagonal (Additive.toMul n) |>.map
      (.prodMap (Additive.ofMul.toEmbedding) (Additive.ofMul.toEmbedding))
    mem_antidiagonal := by simp [← ofMul_mul, mem_divisorsAntidiagonal] }

end PNat

namespace Nat

/-- The `Finset` of all `d`-tuples of natural numbers whose product is `n`. Defined to be `∅` when
`n = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdc2ca609ff443ae8079ced89c6ed28b4a03af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
