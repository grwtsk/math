# exists_lt_card_nth_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e3e8f13-f99f-4a99-d044-275cc9073ef6",
  "kind": "theorem",
  "lexical_name": "exists_lt_card_nth_eq",
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
  "slug": "exists-lt-card-nth-eq--09c1a26497eb521aa9933768",
  "source": {
    "blob": "7182e6827ccf2929f6f6329d723867fd014d452e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c1a26497eb521aa9933768491eb6befcade40afb349840f1448c36e2faec30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e3e8f13-f99f-4a99-d044-275cc9073ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_card_nth_eq {x} (h : p x) :
    ∃ n, (∀ hf : (setOf p).Finite, n < #hf.toFinset) ∧ nth p n = x := by
  refine (setOf p).finite_or_infinite.elim (fun hf => ?_) fun hf => ?_
  · rcases exists_lt_card_finite_nth_eq hf h with ⟨n, hn, hx⟩
    exact ⟨n, fun _ => hn, hx⟩
  · rw [← @Set.mem_setOf_eq _ _ p, ← range_nth_of_infinite hf] at h
    rcases h with ⟨n, hx⟩
    exact ⟨n, fun hf' => absurd hf' hf, hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7182e6827ccf2929f6f6329d723867fd014d452e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
