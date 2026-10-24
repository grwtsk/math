# invSqrtDim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edcf1db4b9457cd4578d150a1ba6881ca9007b68ef2d0edce53155b1bf96236c",
  "kind": "def",
  "lexical_name": "invSqrtDim",
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
  "slug": "invsqrtdim--066b8ef69f92fb7a6d9ad4e2",
  "source": {
    "blob": "dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:066b8ef69f92fb7a6d9ad4e2094458b160f39c10792a38ac5b172af58055ed9e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edcf1db4b9457cd4578d150a1ba6881ca9007b68ef2d0edce53155b1bf96236c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invSqrtDim (d_k : Nat) (prec : Int) : IntervalDyadic :=
  if d_k = 0 then
    IntervalDyadic.singleton (Core.Dyadic.ofInt 1)
  else
    -- √d_k ∈ [√d_k - ε, √d_k + ε] for small ε
    -- We compute a conservative bound
    let d_rat : ℚ := d_k
    let sqrt_approx := IntervalRat.sqrtInterval ⟨d_rat, d_rat, le_refl _⟩
    -- Invert: 1/√d_k
    if h : sqrt_approx.lo > 0 then
      let inv := IntervalRat.invNonzero ⟨sqrt_approx, fun hcz => not_lt.mpr hcz.1 h⟩
      IntervalDyadic.ofIntervalRat inv prec
    else
      -- Fallback (should not happen for d_k > 0)
      IntervalDyadic.ofIntervalRat ⟨0, 1, by norm_num⟩ prec

/-! ### Scaled Dot-Product Attention (Vector Form) -/

/-- Attention scores for a single query against all keys.

    Given:
    - q: query vector [d_k]
    - K: key matrix [seq_len, d_k] (as list of key vectors)

    Returns: attention weights [seq_len] after softmax

    Formula: softmax(q · k_i / √d_k for all i)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
