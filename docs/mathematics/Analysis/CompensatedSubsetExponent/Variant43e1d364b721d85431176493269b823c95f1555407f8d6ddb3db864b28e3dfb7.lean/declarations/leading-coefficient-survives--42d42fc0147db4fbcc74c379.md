# leading_coefficient_survives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102f59eb-8a7e-d083-5877-1c6b7806dda9",
  "kind": "theorem",
  "lexical_name": "leading_coefficient_survives",
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
  "slug": "leading-coefficient-survives--42d42fc0147db4fbcc74c379",
  "source": {
    "blob": "9f1ebd37ac353f69fd5d49cbc8cd98bd3d145edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d42fc0147db4fbcc74c3791297e93c8fd84d44d8dfd4b0000e3c02778df55d",
  "verification": {
    "reference": "docs/verification/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102f59eb-8a7e-d083-5877-1c6b7806dda9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leading_coefficient_survives {ι : Type*} (bank : Finset (Finset ι))
    (ell : ι → ℝ) (a : Finset ι → ℝ) (a0 : ℝ)
    (hn : ∀ J ∈ bank, J.Nonempty) (hell : ∀ J ∈ bank, ∀ i ∈ J, 0 < ell i) :
    Tendsto (fun Z : ℝ ↦ a0 + ∑ J ∈ bank, a J * Z ^ extraExponent ell J)
      atTop (𝓝 a0) := by
  simpa using (finite_lower_bank_decays bank ell a hn hell).const_add a0

/-- No cancellation of the top packet occurs merely from finitely many lower powers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f1ebd37ac353f69fd5d49cbc8cd98bd3d145edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
