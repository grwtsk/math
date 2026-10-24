# cauchy_iff_exists_le_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a0627c2-f399-e813-e43a-c0bd296ac187",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b193e33-642c-b760-f267-d5e15ddc02a8",
  "kind": "theorem",
  "lexical_name": "cauchy_iff_exists_le_nhds",
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
  "slug": "cauchy-iff-exists-le-nhds--0a323cd9a31e3044a8d59ad6",
  "source": {
    "blob": "ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 439,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a323cd9a31e3044a8d59ad6394c84c80a11814fc4f2c2790d4ff9b7e86eaf15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b193e33-642c-b760-f267-d5e15ddc02a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchy_iff_exists_le_nhds [CompleteSpace α] {l : Filter α} [NeBot l] :
    Cauchy l ↔ ∃ x, l ≤ 𝓝 x :=
  ⟨CompleteSpace.complete, fun ⟨_, hx⟩ => cauchy_nhds.mono hx⟩
#align cauchy_iff_exists_le_nhds cauchy_iff_exists_le_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
