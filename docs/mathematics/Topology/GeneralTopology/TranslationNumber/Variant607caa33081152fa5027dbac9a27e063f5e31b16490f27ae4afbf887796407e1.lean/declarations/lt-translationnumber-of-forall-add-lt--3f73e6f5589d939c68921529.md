# lt_translationNumber_of_forall_add_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac278ae-034e-a814-112a-0fa9c6bd961b",
  "kind": "theorem",
  "lexical_name": "lt_translationNumber_of_forall_add_lt",
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
  "slug": "lt-translationnumber-of-forall-add-lt--3f73e6f5589d939c68921529",
  "source": {
    "blob": "092e7da723d91029af270352b07150f63677e197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 794,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f73e6f5589d939c68921529e3f6ca4e7aff2ce6ee52339577ac3567bfd79040",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac278ae-034e-a814-112a-0fa9c6bd961b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_translationNumber_of_forall_add_lt (hf : Continuous f) {z : ℝ} (hz : ∀ x, x + z < f x) :
    z < τ f := by
  obtain ⟨x, -, hx⟩ : ∃ x ∈ Icc (0 : ℝ) 1, ∀ y ∈ Icc (0 : ℝ) 1, f x - x ≤ f y - y :=
    isCompact_Icc.exists_isMinOn (nonempty_Icc.2 zero_le_one) (hf.sub continuous_id).continuousOn
  refine lt_of_lt_of_le (lt_sub_iff_add_lt'.2 <| hz x) ?_
  apply le_translationNumber_of_add_le
  simp only [← le_sub_iff_add_le']
  exact f.forall_map_sub_of_Icc _ hx

/-- If `f` is a continuous monotone map `ℝ → ℝ`, `f (x + 1) = f x + 1`, then there exists `x`
such that `f x = x + τ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092e7da723d91029af270352b07150f63677e197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
