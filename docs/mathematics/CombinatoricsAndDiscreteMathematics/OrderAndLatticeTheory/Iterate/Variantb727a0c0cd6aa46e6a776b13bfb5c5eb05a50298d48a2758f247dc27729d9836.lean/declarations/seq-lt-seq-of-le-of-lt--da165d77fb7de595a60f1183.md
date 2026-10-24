# seq_lt_seq_of_le_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67055c6a-ea79-b7e9-1fd3-b30079769030",
  "kind": "theorem",
  "lexical_name": "seq_lt_seq_of_le_of_lt",
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
  "slug": "seq-lt-seq-of-le-of-lt--da165d77fb7de595a60f1183",
  "source": {
    "blob": "779f1f6ef543a84bb87d559f98472dfdf5627450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da165d77fb7de595a60f1183d85b1c6e2a114bb04a4d17843ce724b877080922",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67055c6a-ea79-b7e9-1fd3-b30079769030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_lt_seq_of_le_of_lt (hf : Monotone f) (n : ℕ) (h₀ : x 0 < y 0)
    (hx : ∀ k < n, x (k + 1) ≤ f (x k)) (hy : ∀ k < n, f (y k) < y (k + 1)) : x n < y n :=
  hf.dual.seq_lt_seq_of_lt_of_le n h₀ hy hx

/-!
### Iterates of two functions

In this section we compare the iterates of a monotone function `f : α → α` to iterates of any
function `g : β → β`. If `h : β → α` satisfies `h ∘ g ≤ f ∘ h`, then `h (g^[n] x)` grows slower
than `f^[n] (h x)`, and similarly for the reversed inequality.

Then we specialize these two lemmas to the case `β = α`, `h = id`.
-/


variable {β : Type*} {g : β → β} {h : β → α}

open Function

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779f1f6ef543a84bb87d559f98472dfdf5627450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
