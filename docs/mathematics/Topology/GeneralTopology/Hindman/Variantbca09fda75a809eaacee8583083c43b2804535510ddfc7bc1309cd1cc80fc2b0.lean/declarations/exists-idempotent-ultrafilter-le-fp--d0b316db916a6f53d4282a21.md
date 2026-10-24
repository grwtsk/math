# exists_idempotent_ultrafilter_le_FP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c09bcac-0aac-6ee3-01a3-00c2cc04cb93",
  "kind": "theorem",
  "lexical_name": "exists_idempotent_ultrafilter_le_FP",
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
  "slug": "exists-idempotent-ultrafilter-le-fp--d0b316db916a6f53d4282a21",
  "source": {
    "blob": "4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0b316db916a6f53d4282a216c5df36774577fb16fde1683bf1f3973ec2bbe2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c09bcac-0aac-6ee3-01a3-00c2cc04cb93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_idempotent_ultrafilter_le_FP {M} [Semigroup M] (a : Stream' M) :
    ∃ U : Ultrafilter M, U * U = U ∧ ∀ᶠ m in U, m ∈ FP a := by
  let S : Set (Ultrafilter M) := ⋂ n, { U | ∀ᶠ m in U, m ∈ FP (a.drop n) }
  have h := exists_idempotent_in_compact_subsemigroup ?_ S ?_ ?_ ?_
  · rcases h with ⟨U, hU, U_idem⟩
    refine ⟨U, U_idem, ?_⟩
    convert Set.mem_iInter.mp hU 0
  · exact Ultrafilter.continuous_mul_left
  · apply IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed
    · intro n U hU
      filter_upwards [hU]
      rw [← Stream'.drop_drop, ← Stream'.tail_eq_drop]
      exact FP.tail _
    · intro n
      exact ⟨pure _, mem_pure.mpr <| FP.head _⟩
    · exact (ultrafilter_isClosed_basic _).isCompact
    · intro n
      apply ultrafilter_isClosed_basic
  · exact IsClosed.isCompact (isClosed_iInter fun i => ultrafilter_isClosed_basic _)
  · intro U hU V hV
    rw [Set.mem_iInter] at *
    intro n
    rw [Set.mem_setOf_eq, Ultrafilter.eventually_mul]
    filter_upwards [hU n] with m hm
    obtain ⟨n', hn⟩ := FP.mul hm
    filter_upwards [hV (n' + n)] with m' hm'
    apply hn
    simpa only [Stream'.drop_drop, add_comm] using hm'

@[to_additive exists_FS_of_large]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
