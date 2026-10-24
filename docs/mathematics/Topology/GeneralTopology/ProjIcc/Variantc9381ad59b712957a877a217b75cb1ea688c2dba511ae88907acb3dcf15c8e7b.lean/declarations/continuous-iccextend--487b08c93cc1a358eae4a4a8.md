# Continuous.IccExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74b1d38fe5205b49e194ba439154d239bf943088",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1f01844-6a3b-7b46-b4e4-6f81b7364643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dacc54c1-7b6b-6c22-ea11-e598569b9104",
  "kind": "theorem",
  "lexical_name": "Continuous.IccExtend",
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
  "slug": "continuous-iccextend--487b08c93cc1a358eae4a4a8",
  "source": {
    "blob": "74b1d38fe5205b49e194ba439154d239bf943088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487b08c93cc1a358eae4a4a8247f73636061620917f555d5d7b3e17ec7004f8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dacc54c1-7b6b-6c22-ea11-e598569b9104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Continuous.IccExtend {f : γ → Icc a b → β} {g : γ → α} (hf : Continuous ↿f)
    (hg : Continuous g) : Continuous fun a => IccExtend h (f a) (g a) :=
  show Continuous (↿f ∘ fun x => (x, projIcc a b h (g x)))
  from hf.comp <| continuous_id.prodMk <| continuous_projIcc.comp hg

/-- A useful special case of `Continuous.IccExtend`. -/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b1d38fe5205b49e194ba439154d239bf943088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
