# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0058a9c3f52be0a9e32df60c40fc37d342b20f146c2c339c1c792011555e28b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--77477d0cd873fc6832fb54de",
  "source": {
    "blob": "7a0cd2b7b8aa3bc92710525b5d0075ba1e0ba557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 763,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77477d0cd873fc6832fb54de7cf7005f6b19701c192c4ee8a2f19d584e1aca9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0058a9c3f52be0a9e32df60c40fc37d342b20f146c2c339c1c792011555e28b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R : Type*} [Zero R] [One R] [Neg R] [Nontrivial R] : Nontrivial ℍ[R] :=
  inferInstanceAs (Nontrivial <| ℍ[R, -1, 0, -1])

namespace Quaternion

variable {S T R : Type*} [CommRing R] (r x y : R) (a b : ℍ[R])

/-- Coercion `R → ℍ[R]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0cd2b7b8aa3bc92710525b5d0075ba1e0ba557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
