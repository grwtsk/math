# ExtensionOfMaxAdjoin.eqn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e07b16-fadc-9260-ec6a-db5112b83ff6",
  "kind": "theorem",
  "lexical_name": "ExtensionOfMaxAdjoin.eqn",
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
  "slug": "extensionofmaxadjoin-eqn--77f6e2dad9bf8d8cf646ccb8",
  "source": {
    "blob": "065854b94aab1689ac4ae5a99212a1e22d9e6bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 291,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f6e2dad9bf8d8cf646ccb8d8dd31ba81024cb98179c5cdfff4ed70cc18b9d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49e07b16-fadc-9260-ec6a-db5112b83ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExtensionOfMaxAdjoin.eqn {y : N} (x : supExtensionOfMaxSingleton i f y) :
    ↑x = ↑(ExtensionOfMaxAdjoin.fst i x) + ExtensionOfMaxAdjoin.snd i x • y :=
  (extensionOfMax_adjoin.aux1 i x).choose_spec.choose_spec
set_option linter.uppercaseLean3 false in
#align module.Baer.extension_of_max_adjoin.eqn Module.Baer.ExtensionOfMaxAdjoin.eqn

variable (f)

-- TODO: refactor to use colon ideals?
/-- The ideal `I = {r | r • y ∈ N}`-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065854b94aab1689ac4ae5a99212a1e22d9e6bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
