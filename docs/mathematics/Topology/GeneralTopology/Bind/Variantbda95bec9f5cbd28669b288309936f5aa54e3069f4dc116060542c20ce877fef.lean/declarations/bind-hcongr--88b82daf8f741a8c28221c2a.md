# bind_hcongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96527464-5584-6ee5-e925-8613bf0a5efb",
  "kind": "theorem",
  "lexical_name": "bind_hcongr",
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
  "slug": "bind-hcongr--88b82daf8f741a8c28221c2a",
  "source": {
    "blob": "fe5e40056559b8a11cdf2867c2d713230ab28f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b82daf8f741a8c28221c2a0790d2c7e0b821b07177df18af21d1b4f69073f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96527464-5584-6ee5-e925-8613bf0a5efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_hcongr {β' : Type v} {m : Multiset α} {f : α → Multiset β} {f' : α → Multiset β'}
    (h : β = β') (hf : ∀ a ∈ m, f a ≍ f' a) : bind m f ≍ bind m f' := by
  subst h
  simp only [heq_eq_eq] at hf
  simp [bind_congr hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5e40056559b8a11cdf2867c2d713230ab28f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
