# irreducible_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a226d8b8035b767644963453525c83d8b208e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb96d509-c441-d229-86be-173d2ea9df2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57d79368-3297-48ea-a359-76e8bc0fd6ed",
  "kind": "theorem",
  "lexical_name": "irreducible_aux2",
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
  "slug": "irreducible-aux2--4b98272c0fecc3bdbb1e31bd",
  "source": {
    "blob": "6a226d8b8035b767644963453525c83d8b208e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b98272c0fecc3bdbb1e31bdf89ea364173eba385db41cbfe93ad1694be66d99",
  "verification": {
    "reference": "docs/verification/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d79368-3297-48ea-a359-76e8bc0fd6ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_aux2 {k m m' n : ℕ} (hkm : k < m) (hmn : m < n) (hkm' : k < m') (hmn' : m' < n)
    (u v w : Units ℤ) (hp : p = trinomial k m n (u : ℤ) v w) (hq : q = trinomial k m' n (u : ℤ) v w)
    (h : p * p.mirror = q * q.mirror) : q = p ∨ q = p.mirror := by
  let f : ℤ[X] → ℤ[X] := fun p => ⟨Finsupp.filter (· ∈ Set.Ioo (k + n) (n + n)) p.toFinsupp⟩
  replace h := congr_arg f h
  replace h := (irreducible_aux1 hkm hmn u v w hp).trans h
  replace h := h.trans (irreducible_aux1 hkm' hmn' u v w hq).symm
  rw [(isUnit_C.mpr v.isUnit).mul_right_inj] at h
  rw [binomial_eq_binomial u.ne_zero w.ne_zero] at h
  simp only [add_left_inj, Units.eq_iff] at h
  rcases h with (⟨rfl, -⟩ | ⟨rfl, rfl, h⟩ | ⟨-, hm, hm'⟩)
  · exact Or.inl (hq.trans hp.symm)
  · refine Or.inr ?_
    rw [← trinomial_mirror hkm' hmn' u.ne_zero u.ne_zero, eq_comm, mirror_eq_iff] at hp
    exact hq.trans hp
  · obtain rfl : m = m' := by omega
    exact Or.inl (hq.trans hp.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a226d8b8035b767644963453525c83d8b208e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
