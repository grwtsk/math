# multinomial_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dcfdfc0-cf5b-0ae6-3da3-4ac9271fe25e",
  "kind": "theorem",
  "lexical_name": "multinomial_update",
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
  "slug": "multinomial-update--493a22c6347e64a71038d0c6",
  "source": {
    "blob": "459526aa7fc3944046f8ef78cdcef04cf9e0f416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:493a22c6347e64a71038d0c603efbd9b14ed0839ddc64b50f1e723c7a9b36afc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dcfdfc0-cf5b-0ae6-3da3-4ac9271fe25e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multinomial_update (a : α) (f : α →₀ ℕ) :
    f.multinomial = (f.sum fun _ => id).choose (f a) * (f.update a 0).multinomial := by
  simp only [multinomial_eq]
  classical
    by_cases h : a ∈ f.support
    · rw [← Finset.insert_erase h, Nat.multinomial_insert (Finset.notMem_erase a _),
        Finset.add_sum_erase _ f h, support_update_zero]
      congr 1
      exact Nat.multinomial_congr fun _ h ↦ (Function.update_of_ne (mem_erase.1 h).1 0 f).symm
    rw [notMem_support_iff] at h
    rw [h, Nat.choose_zero_right, one_mul, ← h, update_self]

end Finsupp

namespace Multiset

variable {α : Type*}

/-- Alternative definition of multinomial based on `Multiset` delegating to the
  finsupp definition
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantcbc16a91c68b16fc6e7f03f74de715e32348e65dfe175e9750a857322496f589.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459526aa7fc3944046f8ef78cdcef04cf9e0f416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
