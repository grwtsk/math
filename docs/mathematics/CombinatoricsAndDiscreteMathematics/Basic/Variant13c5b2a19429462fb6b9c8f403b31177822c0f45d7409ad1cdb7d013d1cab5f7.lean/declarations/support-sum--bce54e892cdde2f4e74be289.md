# support_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d11be2-81c2-f9e5-36e1-053ea86d8493",
  "kind": "theorem",
  "lexical_name": "support_sum",
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
  "slug": "support-sum--bce54e892cdde2f4e74be289",
  "source": {
    "blob": "7e792edf1778844d2aa5b6727f8960183603c75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant13c5b2a19429462fb6b9c8f403b31177822c0f45d7409ad1cdb7d013d1cab5f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bce54e892cdde2f4e74be289973d7565a1c6144ec0242faf3f5ddc55577833fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant13c5b2a19429462fb6b9c8f403b31177822c0f45d7409ad1cdb7d013d1cab5f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d11be2-81c2-f9e5-36e1-053ea86d8493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_sum [DecidableEq β] [Zero M] [AddCommMonoid N] {f : α →₀ M} {g : α → M → β →₀ N} :
    (f.sum g).support ⊆ f.support.biUnion fun a => (g a (f a)).support := by
  have : ∀ c, (f.sum fun a b => g a b c) ≠ 0 → ∃ a, f a ≠ 0 ∧ ¬(g a (f a)) c = 0 := fun a₁ h =>
    let ⟨a, ha, ne⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
    ⟨a, mem_support_iff.mp ha, ne⟩
  simpa only [Finset.subset_iff, mem_support_iff, Finset.mem_biUnion, sum_apply, exists_prop]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant13c5b2a19429462fb6b9c8f403b31177822c0f45d7409ad1cdb7d013d1cab5f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant13c5b2a19429462fb6b9c8f403b31177822c0f45d7409ad1cdb7d013d1cab5f7.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e792edf1778844d2aa5b6727f8960183603c75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
