# Subalgebra.toNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e118e83ce388fa68d9286704c723660e1694e123a91fd5c5d6fce6899ef53cee",
  "kind": "instance",
  "lexical_name": "Subalgebra.toNormedAlgebra",
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
  "slug": "subalgebra-tonormedalgebra--2ed9475322466292dc8d3c90",
  "source": {
    "blob": "0c70350a94ff80dd45966f2a9e6abdd5d0a629e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed9475322466292dc8d3c908076e2e377a608ed718913199775f46fec97fdb5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e118e83ce388fa68d9286704c723660e1694e123a91fd5c5d6fce6899ef53cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subalgebra.toNormedAlgebra {𝕜 A : Type*} [SeminormedRing A] [NormedField 𝕜]
    [NormedAlgebra 𝕜 A] (S : Subalgebra 𝕜 A) : NormedAlgebra 𝕜 S :=
  fast_instance% NormedAlgebra.induced 𝕜 S A S.val

section SubalgebraClass

variable {S 𝕜 E : Type*} [NormedField 𝕜] [SeminormedRing E] [NormedAlgebra 𝕜 E]
variable [SetLike S E] [SubringClass S E] [SMulMemClass S 𝕜 E] (s : S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70350a94ff80dd45966f2a9e6abdd5d0a629e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
