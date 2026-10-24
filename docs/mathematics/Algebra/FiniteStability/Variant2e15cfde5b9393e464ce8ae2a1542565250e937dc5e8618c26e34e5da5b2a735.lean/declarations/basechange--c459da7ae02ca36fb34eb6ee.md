# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dc185488bbe24677b8f38e790b64911263b794852eb3c9730f8428b7f3a6c6b",
  "kind": "instance",
  "lexical_name": "baseChange",
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
  "slug": "basechange--c459da7ae02ca36fb34eb6ee",
  "source": {
    "blob": "59c7b2b0e0823c0b6a4eedef98979688b307b91d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c459da7ae02ca36fb34eb6ee1292e6449935e5d21ca18676ca92678c5ab0082c",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dc185488bbe24677b8f38e790b64911263b794852eb3c9730f8428b7f3a6c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance baseChange [hfa : FiniteType R A] : Algebra.FiniteType B (B ⊗[R] A) := by
  rw [iff_quotient_mvPolynomial''] at *
  obtain ⟨n, f, hf⟩ := hfa
  let g : B ⊗[R] MvPolynomial (Fin n) R →ₐ[B] B ⊗[R] A :=
    Algebra.TensorProduct.map (AlgHom.id B B) f
  have : Function.Surjective g := baseChangeAux_surj B hf
  use n, AlgHom.comp g (MvPolynomial.algebraTensorAlgEquiv R B).symm.toAlgHom
  simpa

end FiniteType

namespace FinitePresentation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c7b2b0e0823c0b6a4eedef98979688b307b91d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
