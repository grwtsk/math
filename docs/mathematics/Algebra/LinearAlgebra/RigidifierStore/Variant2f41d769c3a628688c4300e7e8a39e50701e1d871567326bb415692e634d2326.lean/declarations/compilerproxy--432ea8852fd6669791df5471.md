# CompilerProxy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eacbad71882355a481b349a625fa6e3a8c311aaa4318699ad04c188d6df1347",
  "kind": "structure",
  "lexical_name": "CompilerProxy",
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
  "slug": "compilerproxy--432ea8852fd6669791df5471",
  "source": {
    "blob": "e0d876a7bfc3b6bdfc950b7ca1a39efe5d404ba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:432ea8852fd6669791df5471dfc3aa3024f21da2325b1a38b4dede81771a85af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eacbad71882355a481b349a625fa6e3a8c311aaa4318699ad04c188d6df1347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompilerProxy (moduleCount : Nat) where
  moduleKey : ModuleKey
  sourceRouteKey : Option RigidKey
  certifiedProxyAddressOf :
    ModuleKey → CompileKey → ObjectAddress
  objectAddress : ObjectAddress
  moduleName : String
  canonicalSourcePath : String
  compileKey : CompileKey
  objectAddressBinding :
    objectAddress = certifiedProxyAddressOf moduleKey compileKey
  sourceBlobAddress : ObjectAddress
  sourceCertificateObjectAddress : Option ObjectAddress
  dependencyGraphDigest : Digest
  dependencyGraphDigestValid : dependencyGraphDigest.Valid
  dependencyBasis : DependencyBitfieldBasis moduleCount
  dependencyGraphBinding :
    dependencyGraphDigest =
      dependencyBasis.dependencyGraphDigest
  directDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  transitiveDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  reverseDependencyBits :
    CertifiedDependencyBitfield dependencyBasis
  oleanBlobAddress : ObjectAddress
  oleanDigest : Digest
  oleanDigestValid : oleanDigest.Valid
  kernelEnvironmentDigest : Digest
  kernelEnvironmentDigestValid : kernelEnvironmentDigest.Valid
  kernelReceiptObjectAddress : ObjectAddress
  originalAcceptedProxyObjectAddress : ObjectAddress
  kernelAccepted : Bool
  kernelAcceptedProof : kernelAccepted = true
  kernelAcceptancePredicate :
    ObjectAddress →
      ObjectAddress →
      CompileKey →
      Digest →
      Prop
  kernelAcceptanceProof :
    kernelAcceptancePredicate
      kernelReceiptObjectAddress oleanBlobAddress compileKey
      kernelEnvironmentDigest

/--
Reuse is authorized only by exact compile-key equality and an accepted prior
proxy.  Dependency bitfields schedule work; they do not replace Lean imports.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d876a7bfc3b6bdfc950b7ca1a39efe5d404ba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
