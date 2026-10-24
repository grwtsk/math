# is_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bce882f3b9bd99afe1ee77551200b76ca32c2a5e556b11798f45195536ccbd53",
  "kind": "instance",
  "lexical_name": "is_finiteDimensional",
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
  "slug": "is-finitedimensional--00a84a8c3e0df630442a85de",
  "source": {
    "blob": "39485aa329e08938a22e03af6735b753cd04f07d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00a84a8c3e0df630442a85de8748d895bcdb18e8cb3a4eefdebf9fe08ff6914f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bce882f3b9bd99afe1ee77551200b76ca32c2a5e556b11798f45195536ccbd53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance is_finiteDimensional [FiniteDimensional F K] :
    FiniteDimensional F (normalClosure F K L) := by
  haveI : ∀ f : K →ₐ[F] L, FiniteDimensional F f.fieldRange := fun f =>
    f.toLinearMap.finiteDimensional_range
  apply IntermediateField.finiteDimensional_iSup_of_finite
#align normal_closure.is_finite_dimensional normalClosure.is_finiteDimensional

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39485aa329e08938a22e03af6735b753cd04f07d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
