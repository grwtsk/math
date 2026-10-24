# ContinuousOn.continuous_of_mulTSupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4d01b9-cdb5-5060-60fd-95075f9ba8f0",
  "kind": "lemma",
  "lexical_name": "ContinuousOn.continuous_of_mulTSupport_subset",
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
  "slug": "continuouson-continuous-of-multsupport-subset--fd0ef3e0f665d04133ae2a46",
  "source": {
    "blob": "f182e29bba1dd35639d3ac2fb35c98f35283f392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0ef3e0f665d04133ae2a46f315defb380cb2726c568ef97b3a29a0d7b87bc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4d01b9-cdb5-5060-60fd-95075f9ba8f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousOn.continuous_of_mulTSupport_subset [TopologicalSpace β] {f : α → β}
    {s : Set α} (hs : ContinuousOn f s) (h's : IsOpen s) (h''s : mulTSupport f ⊆ s) :
    Continuous f :=
  continuous_of_mulTSupport fun _ hx ↦ h's.continuousOn_iff.mp hs <| h''s hx

end

/-! ## Functions with compact support -/
section CompactSupport
variable [TopologicalSpace α] [TopologicalSpace α']
variable [One β] [One γ] [One δ]
variable {g : β → γ} {f : α → β} {f₂ : α → γ} {m : β → γ → δ}

/-- A function `f` *has compact multiplicative support* or is *compactly supported* if the closure
of the multiplicative support of `f` is compact. In a T₂ space this is equivalent to `f` being equal
to `1` outside a compact set. -/
@[to_additive "A function `f` *has compact support* or is *compactly supported* if the closure of
the support of `f` is compact. In a T₂ space this is equivalent to `f` being equal to `0` outside a
compact set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f182e29bba1dd35639d3ac2fb35c98f35283f392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
