# restrictScalars_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79aea7e6-7cd7-9d6e-d080-232a5dc93033",
  "kind": "lemma",
  "lexical_name": "restrictScalars_apply",
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
  "slug": "restrictscalars-apply--b74279efde0c230efb1264e1",
  "source": {
    "blob": "c7dfda9beef09c47b4c050f5d6a5466fcbd3cea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 378,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b74279efde0c230efb1264e11ec02e357508f982d98e7fa86dd0f97fc3537d99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79aea7e6-7cd7-9d6e-d080-232a5dc93033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalars_apply (d : Derivation S A M) (x : A) : d.restrictScalars R x = d x := rfl

end RestrictScalars

end

section Lift

variable {R : Type*} {A : Type*} {M : Type*}
variable [CommSemiring R] [CommRing A] [CommRing M]
variable [Algebra R A] [Algebra R M]
variable {F : Type*} [FunLike F A M] [AlgHomClass F R A M]

/--
Lift a derivation via an algebra homomorphism `f` with a right inverse such that
`f(x) = 0 → f(d(x)) = 0`. This gives the derivation `f ∘ d ∘ f⁻¹`.
This is needed for an argument in [Rosenlicht, M. Integration in finite terms][Rosenlicht_1972].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7dfda9beef09c47b4c050f5d6a5466fcbd3cea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
