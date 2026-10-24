# mapCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:866317c483ed8e6e5a23eef7cb88ae0e2d0862dc253022e218a15558ee7702ba",
  "kind": "def",
  "lexical_name": "mapCoeffs",
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
  "slug": "mapcoeffs--c4bcb5a139edfbedc8add856",
  "source": {
    "blob": "f5c4af0628dd4ca0dc9cf1138b01ff2fe8f1c9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 385,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4bcb5a139edfbedc8add8568eb50301556dbd71d3fea06d0cb4b17e3ff3e11c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:866317c483ed8e6e5a23eef7cb88ae0e2d0862dc253022e218a15558ee7702ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapCoeffs (h : ∀ (c) (x : M), f c • x = c • x) : Basis ι R' M := by
  letI : Module R' R := Module.compHom R (↑f.symm : R' →+* R)
  haveI : IsScalarTower R' R M :=
    { smul_assoc := fun x y z => by
        change (f.symm x * y) • z = x • (y • z)
        rw [mul_smul, ← h, f.apply_symm_apply] }
  exact ofRepr <| (b.repr.restrictScalars R').trans <|
    Finsupp.mapRange.linearEquiv (Module.compHom.toLinearEquiv f.symm).symm

variable (h : ∀ (c) (x : M), f c • x = c • x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Varianteb54032a9cfc3d56d8d0842498d32fcbc4d957dd16975aa43982694c7905d0c4.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c4af0628dd4ca0dc9cf1138b01ff2fe8f1c9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
