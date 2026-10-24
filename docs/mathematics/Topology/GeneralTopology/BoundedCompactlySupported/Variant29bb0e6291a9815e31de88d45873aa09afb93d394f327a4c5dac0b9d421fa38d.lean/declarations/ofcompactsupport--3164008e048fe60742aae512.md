# ofCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1059fecdafd3858950d9f1e46df932ab66186774d9b94a8285916ac3f6b85562",
  "kind": "def",
  "lexical_name": "ofCompactSupport",
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
  "slug": "ofcompactsupport--3164008e048fe60742aae512",
  "source": {
    "blob": "c7057082b82379dafed722616d1af0a2704f9769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3164008e048fe60742aae5128b8ea67857cfaf4976c4c7379ee301b9702dcf8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1059fecdafd3858950d9f1e46df932ab66186774d9b94a8285916ac3f6b85562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCompactSupport (g : α → γ) (hg₁ : Continuous g) (hg₂ : HasCompactSupport g) : α →ᵇ γ where
  toFun := g
  continuous_toFun := hg₁
  map_bounded' := by
    obtain (hs | hs) := (tsupport g).eq_empty_or_nonempty
    · exact ⟨0, by simp [tsupport_eq_empty_iff.mp hs]⟩
    · obtain ⟨z, _, hmax⟩ := hg₂.exists_isMaxOn hs <| hg₁.norm.continuousOn
      refine ⟨2 * ‖g z‖, dist_le_two_norm' fun x ↦ ?_⟩
      by_cases hx : x ∈ tsupport g
      · exact isMaxOn_iff.mp hmax x hx
      · simp [image_eq_zero_of_notMem_tsupport hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7057082b82379dafed722616d1af0a2704f9769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
