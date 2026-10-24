# subst_substInv_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16984e582371189eb40c1174b49da057798ce784",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b455822c-1ee6-42e3-0cd8-04df46efcff1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3be627-f1a4-9cd6-3519-d6778246782e",
  "kind": "lemma",
  "lexical_name": "subst_substInv_left",
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
  "slug": "subst-substinv-left--5a1bdfc0a0fe10693ca6ae17",
  "source": {
    "blob": "16984e582371189eb40c1174b49da057798ce784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 543,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1bdfc0a0fe10693ca6ae1704366474998b04373a5b4f3af919fdc69d90d88a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3be627-f1a4-9cd6-3519-d6778246782e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subst_substInv_left : P.substInv.subst P = X := by
  have : Invertible (P.substInv.coeff 1) := by simpa using invertibleInvOf
  let Q := P.substInv.substInv
  have hQ : HasSubst Q := HasSubst.substInv P.substInv
  have eq_aux : P.substInv.subst Q = X := subst_substInv_right P.substInv P.constantCoeff_substInv
  suffices h : Q = P from by simp_rw [← h, eq_aux]
  calc
    _ = PowerSeries.subst Q (P.subst P.substInv) := by
      rw [subst_substInv_right _ hP, subst_X hQ]
    _ = P := by
      simp [subst_comp_subst_apply (HasSubst.substInv P) hQ, eq_aux]

end Invertible

section IsUnit

variable (P : R⟦X⟧) (hP : P.constantCoeff = 0) (hP' : IsUnit (P.coeff 1))

/-- Given a power series `P = u • X + O(X²)` with `u` is an unit in ring `R`,
this is the power series `Q` such that `P(Q(X)) = X`.
See `PowerSeries.subst_substInvOfIsUnit_right`.

See also `PowerSeries.substInv` for a variant using `Invertible`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16984e582371189eb40c1174b49da057798ce784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
