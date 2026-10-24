# tendsto_iff_ultrafilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605d1979-34fb-8587-efd1-4f0f243400fd",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_ultrafilter",
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
  "slug": "tendsto-iff-ultrafilter--23add8d62957ad95994719bd",
  "source": {
    "blob": "4a6e79830e0f3b6bfd9bc8ce25bf44f8d58c04c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23add8d62957ad95994719bd1115a844fb2716ebfe66c8dd87868c42efe285af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605d1979-34fb-8587-efd1-4f0f243400fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_ultrafilter (f : α → β) (l₁ : Filter α) (l₂ : Filter β) :
    Tendsto f l₁ l₂ ↔ ∀ g : Ultrafilter α, ↑g ≤ l₁ → Tendsto f g l₂ := by
  simpa only [tendsto_iff_comap] using le_iff_ultrafilter
#align filter.tendsto_iff_ultrafilter Filter.tendsto_iff_ultrafilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6e79830e0f3b6bfd9bc8ce25bf44f8d58c04c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
