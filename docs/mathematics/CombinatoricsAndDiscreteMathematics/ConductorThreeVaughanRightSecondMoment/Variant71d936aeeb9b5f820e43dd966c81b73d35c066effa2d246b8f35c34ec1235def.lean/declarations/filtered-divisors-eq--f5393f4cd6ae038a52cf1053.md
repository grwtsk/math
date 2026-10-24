# filtered_divisors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45057a78-0c43-ffe8-b962-64f466e9437f",
  "kind": "theorem",
  "lexical_name": "filtered_divisors_eq",
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
  "slug": "filtered-divisors-eq--f5393f4cd6ae038a52cf1053",
  "source": {
    "blob": "bb704e4cb8d452dcc02a556cf3768cebaa1b10eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5393f4cd6ae038a52cf1053142fe8be1a237adb72f1e9f36ed99478132e648b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45057a78-0c43-ffe8-b962-64f466e9437f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem filtered_divisors_eq (V : ℕ) {k : ℕ} (hk : k ≠ 0) :
    k.divisors.filter (fun d ↦ d ≤ V) =
      (Finset.Ioc 0 V).filter (fun d ↦ d ∣ k) := by
  ext d
  simp only [Finset.mem_filter, Nat.mem_divisors, Finset.mem_Ioc]
  constructor
  · rintro ⟨⟨hdk, _⟩, hdV⟩
    have hdpos : 0 < d := by
      exact Nat.pos_of_dvd_of_pos hdk (Nat.pos_of_ne_zero hk)
    exact ⟨⟨hdpos, hdV⟩, hdk⟩
  · rintro ⟨⟨hdpos, hdV⟩, hdk⟩
    exact ⟨⟨hdk, hk⟩, hdV⟩

/-- Absolute truncated Möbius divisor mass is at most the number of its
active divisor indices. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb704e4cb8d452dcc02a556cf3768cebaa1b10eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
