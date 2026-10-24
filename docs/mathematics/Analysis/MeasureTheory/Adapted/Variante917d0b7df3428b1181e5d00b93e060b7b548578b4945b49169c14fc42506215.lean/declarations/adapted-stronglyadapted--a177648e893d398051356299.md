# Adapted.stronglyAdapted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b52df93-4e88-2eb1-7d7a-efe9baed9e55",
  "kind": "theorem",
  "lexical_name": "Adapted.stronglyAdapted",
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
  "slug": "adapted-stronglyadapted--a177648e893d398051356299",
  "source": {
    "blob": "2d3fb427b30bf62b245c78001a9adaa2162d531d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a177648e893d398051356299fe9904b1d721f46f1a9dd2c77e796b277d45f777",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b52df93-4e88-2eb1-7d7a-efe9baed9e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Adapted.stronglyAdapted [mΒ : ∀ i, MeasurableSpace (β i)]
    [∀ i, OpensMeasurableSpace (β i)] [∀ i, PseudoMetrizableSpace (β i)]
    [∀ i, SecondCountableTopology (β i)] (hf : Adapted f u) :
    StronglyAdapted f u := fun _ ↦ (hf _).stronglyMeasurable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d3fb427b30bf62b245c78001a9adaa2162d531d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
