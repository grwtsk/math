# CauchySeq.prod

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
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3950debe-bd79-df6f-7470-75dd796f652c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adffe40c-a27a-253e-7d05-76c485b332d1",
  "kind": "theorem",
  "lexical_name": "CauchySeq.prod",
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
  "slug": "cauchyseq-prod--ccef22ecf8695a31b401b5ac",
  "source": {
    "blob": "ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccef22ecf8695a31b401b5ac426f395849f219bd9028a51c2226fcf8411f6326",
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

Occurrence: `result:adffe40c-a27a-253e-7d05-76c485b332d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CauchySeq.prod {γ} [UniformSpace β] [SemilatticeSup γ] {u : γ → α} {v : γ → β}
    (hu : CauchySeq u) (hv : CauchySeq v) : CauchySeq fun x => (u x, v x) :=
  haveI := hu.nonempty
  (Cauchy.prod hu hv).mono (Tendsto.prod_mk le_rfl le_rfl)
#align cauchy_seq.prod CauchySeq.prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
