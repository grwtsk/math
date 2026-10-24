# derivationToSquareZeroEquivLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4702eb46e9bdc6186ffbcd3b7ea6234fda6f6007ff6ab052008d4d06aca64ec8",
  "kind": "def",
  "lexical_name": "derivationToSquareZeroEquivLift",
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
  "slug": "derivationtosquarezeroequivlift--857b9427e0a064ee34144c80",
  "source": {
    "blob": "af3f8877bfc2490f25adf1af1e69357dd97637c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:857b9427e0a064ee34144c806194d8e7577da03fdf9dd80aa2fc57c04ea95acc",
  "verification": {
    "reference": "docs/verification/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4702eb46e9bdc6186ffbcd3b7ea6234fda6f6007ff6ab052008d4d06aca64ec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivationToSquareZeroEquivLift [IsScalarTower R A B] : Derivation R A I ≃
    { f : A →ₐ[R] B // (Ideal.Quotient.mkₐ R I).comp f = IsScalarTower.toAlgHom R A (B ⧸ I) } := by
  refine ⟨fun d => ⟨liftOfDerivationToSquareZero I hI d, ?_⟩, fun f =>
    (derivationToSquareZeroOfLift I hI f.1 f.2 :), ?_, ?_⟩
  · ext x; exact liftOfDerivationToSquareZero_mk_apply I hI d x
  · intro d; ext x; exact add_sub_cancel_right (d x : B) (algebraMap A B x)
  · rintro ⟨f, hf⟩; ext x; exact sub_add_cancel (f x) (algebraMap A B x)

end ToSquareZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3f8877bfc2490f25adf1af1e69357dd97637c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
