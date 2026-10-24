# AddMonoidHom.completion_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:726fc5dd-f794-e93d-3e0a-722b22d21c55",
  "kind": "theorem",
  "lexical_name": "AddMonoidHom.completion_add",
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
  "slug": "addmonoidhom-completion-add--8fbb5f8828f4b5406afb9463",
  "source": {
    "blob": "ca8b572b2dd564b9791ff886caca54be62a495e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fbb5f8828f4b5406afb94631be287b1644a7e1930fa2976dbf05dc8766107aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726fc5dd-f794-e93d-3e0a-722b22d21c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddMonoidHom.completion_add {γ : Type*} [AddCommGroup γ] [UniformSpace γ]
    [UniformAddGroup γ] (f g : α →+ γ) (hf : Continuous f) (hg : Continuous g) :
    AddMonoidHom.completion (f + g) (hf.add hg) =
    AddMonoidHom.completion f hf + AddMonoidHom.completion g hg := by
  have hfg := hf.add hg
  ext x
  refine Completion.induction_on x ?_ ?_
  · exact isClosed_eq ((f + g).continuous_completion hfg)
      ((f.continuous_completion hf).add (g.continuous_completion hg))
  · intro a
    simp [(f + g).completion_coe hfg, coe_add, f.completion_coe hf, g.completion_coe hg]
#align add_monoid_hom.completion_add AddMonoidHom.completion_add

end AddMonoidHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8b572b2dd564b9791ff886caca54be62a495e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
