# mulSemiringActionQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58c776e7e198128a254e1398c47bdad56227078e4f21b1cef4843de1e14166c9",
  "kind": "def",
  "lexical_name": "mulSemiringActionQuotient",
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
  "slug": "mulsemiringactionquotient--7506412b26680da727e418dc",
  "source": {
    "blob": "ece244dc0bc1498f09feac420f45299dfad1b540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 204,
    "path": "GRWTSK/Algebra/Basic/Variant053a6deebefe96b1c7d2e25bed8fde571bbab9f6f5d6c5ae882ee3eeb5bb8465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7506412b26680da727e418dc1f63e5151281d2fa511814bc2dcf704339d15e72",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant053a6deebefe96b1c7d2e25bed8fde571bbab9f6f5d6c5ae882ee3eeb5bb8465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58c776e7e198128a254e1398c47bdad56227078e4f21b1cef4843de1e14166c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mulSemiringActionQuotient [IsGaloisGroup N B C] [N.Normal] :
    MulSemiringAction (G ⧸ N) B :=
  letI := mulSemiringActionOfNormal G B C N
  { smul q x :=
      Quotient.liftOn' q (· • x) fun g₁ g₂ h ↦ by
      apply FaithfulSMul.algebraMap_injective B C
      rw [algebraMap.smul', algebraMap.smul', smul_eq_iff_eq_inv_smul, ← smul_assoc, smul_eq_mul,
        Subgroup.smul_algebraMap C (by rwa [← QuotientGroup.leftRel_apply])]
    one_smul x := one_smul G x
    mul_smul q₁ q₂ x := Quotient.inductionOn₂' q₁ q₂ fun g h ↦ mul_smul g h x
    smul_add q x y := Quotient.inductionOn' q fun g ↦ smul_add g x y
    smul_zero q := Quotient.inductionOn' q fun g ↦ smul_zero g
    smul_one q := Quotient.inductionOn' q fun g ↦ smul_one g
    smul_mul q x y := Quotient.inductionOn' q fun g ↦ smul_mul' g x y }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant053a6deebefe96b1c7d2e25bed8fde571bbab9f6f5d6c5ae882ee3eeb5bb8465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant053a6deebefe96b1c7d2e25bed8fde571bbab9f6f5d6c5ae882ee3eeb5bb8465.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece244dc0bc1498f09feac420f45299dfad1b540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
