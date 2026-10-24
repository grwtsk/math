# tendsto_of_no_upcrossings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987bd4f2-2bef-c62f-d884-46ca1f0b3edd",
  "kind": "theorem",
  "lexical_name": "tendsto_of_no_upcrossings",
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
  "slug": "tendsto-of-no-upcrossings--39e96a1b11bda3cc496858be",
  "source": {
    "blob": "5da351eb41598dd43a4bae3aa9e4342b4f16bf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 325,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e96a1b11bda3cc496858be50d1697736e38b69fade5f13a401d9199267d03c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987bd4f2-2bef-c62f-d884-46ca1f0b3edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_no_upcrossings [DenselyOrdered α] {f : Filter β} {u : β → α} {s : Set α}
    (hs : Dense s) (H : ∀ a ∈ s, ∀ b ∈ s, a < b → ¬((∃ᶠ n in f, u n < a) ∧ ∃ᶠ n in f, b < u n))
    (h : f.IsBoundedUnder (· ≤ ·) u := by isBoundedDefault)
    (h' : f.IsBoundedUnder (· ≥ ·) u := by isBoundedDefault) :
    ∃ c : α, Tendsto u f (𝓝 c) := by
  rcases f.eq_or_neBot with rfl | hbot
  · exact ⟨sInf ∅, tendsto_bot⟩
  refine ⟨limsup u f, ?_⟩
  apply tendsto_of_le_liminf_of_limsup_le _ le_rfl h h'
  by_contra! hlt
  obtain ⟨a, ⟨⟨la, au⟩, as⟩⟩ : ∃ a, (f.liminf u < a ∧ a < f.limsup u) ∧ a ∈ s :=
    dense_iff_inter_open.1 hs (Set.Ioo (f.liminf u) (f.limsup u)) isOpen_Ioo
      (Set.nonempty_Ioo.2 hlt)
  obtain ⟨b, ⟨⟨ab, bu⟩, bs⟩⟩ : ∃ b, (a < b ∧ b < f.limsup u) ∧ b ∈ s :=
    dense_iff_inter_open.1 hs (Set.Ioo a (f.limsup u)) isOpen_Ioo (Set.nonempty_Ioo.2 au)
  have A : ∃ᶠ n in f, u n < a := frequently_lt_of_liminf_lt (IsBounded.isCobounded_ge h) la
  have B : ∃ᶠ n in f, b < u n := frequently_lt_of_lt_limsup (IsBounded.isCobounded_le h') bu
  exact H a as b bs ab ⟨A, B⟩

variable [FirstCountableTopology α] {f : Filter α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant3619d0051f2fb8c90a395401cb211497040c296df150b6966ed7ed6a11f04293.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da351eb41598dd43a4bae3aa9e4342b4f16bf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
