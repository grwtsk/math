# ExtensionOfMaxAdjoin.ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a5ba32545ba3d6394d4708006f53688a00cf61c6d9ef01f83c6ba9a2517fb42",
  "kind": "def",
  "lexical_name": "ExtensionOfMaxAdjoin.ideal",
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
  "slug": "extensionofmaxadjoin-ideal--3566219f041217e9f00fa307",
  "source": {
    "blob": "2dfe07b839715c70915cf7da98211c52d4b40e13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 293,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3566219f041217e9f00fa3072c83fd2683cee4c53ecd3851a3ece0c289ae103f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a5ba32545ba3d6394d4708006f53688a00cf61c6d9ef01f83c6ba9a2517fb42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExtensionOfMaxAdjoin.ideal (y : N) : Ideal R :=
  (extensionOfMax i f).domain.comap ((LinearMap.id : R →ₗ[R] R).smulRight y)
set_option linter.uppercaseLean3 false in
#align module.Baer.extension_of_max_adjoin.ideal Module.Baer.ExtensionOfMaxAdjoin.ideal

/-- A linear map `I ⟶ Q` by `x ↦ f' (x • y)` where `f'` is the maximal extension-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfe07b839715c70915cf7da98211c52d4b40e13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
