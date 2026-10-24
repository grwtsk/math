# DenseRange.exists_seq_strictMono_tendsto_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eebb994-dca1-2b43-23fa-e09dfda7f36c",
  "kind": "theorem",
  "lexical_name": "DenseRange.exists_seq_strictMono_tendsto_of_lt",
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
  "slug": "denserange-exists-seq-strictmono-tendsto-of-lt--2f0cb9e41f8180723ebd9ebc",
  "source": {
    "blob": "942b60699816bcfa05ef0bc486065ffb784bdefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0cb9e41f8180723ebd9ebca7f128d2703d190c8ca612e1a194b8dfae13fc29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eebb994-dca1-2b43-23fa-e09dfda7f36c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DenseRange.exists_seq_strictMono_tendsto_of_lt {β : Type*} [LinearOrder β]
    [DenselyOrdered α] [FirstCountableTopology α] {f : β → α} {x y : α} (hf : DenseRange f)
    (hmono : Monotone f) (hlt : y < x) :
    ∃ u : ℕ → β, StrictMono u ∧ (∀ n, f (u n) ∈ Ioo y x) ∧ Tendsto (f ∘ u) atTop (𝓝 x) := by
  rcases Dense.exists_seq_strictMono_tendsto_of_lt hf hlt with ⟨u, hu, huyxf, hlim⟩
  have huyx (n : ℕ) : u n ∈ Ioo y x := (huyxf n).1
  have huf (n : ℕ) : u n ∈ range f := (huyxf n).2
  choose v hv using huf
  obtain rfl : f ∘ v = u := funext hv
  exact ⟨v, fun a b hlt ↦ hmono.reflect_lt <| hu hlt, huyx, hlim⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `942b60699816bcfa05ef0bc486065ffb784bdefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
