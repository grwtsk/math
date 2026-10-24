# g2PresentationLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:371e982f5f1d0608f664598d23cab2e6d3645cf93cc7906cf1447b5740ca7c45",
  "kind": "def",
  "lexical_name": "g2PresentationLift",
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
  "slug": "g2presentationlift--94a7e1db0cb4f2f56736333d",
  "source": {
    "blob": "7957cc9c617ae4dee881f52ecc930ad328de80ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Algebra/Hecke/G2Presentation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94a7e1db0cb4f2f56736333df96e34a363a08c76bf5c90b40072a1b711a2663b",
  "verification": {
    "reference": "docs/verification/Algebra/Hecke/G2Presentation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:371e982f5f1d0608f664598d23cab2e6d3645cf93cc7906cf1447b5740ca7c45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def g2PresentationLift (q : R) (x : Bool → A)
    (hq : ∀ b, x b * x b = (q - 1) • x b + q • 1)
    (hb : (x false * x true) ^ 3 = (x true * x false) ^ 3) :
    G2Presented q →ₐ[R] A :=
  RingQuot.liftAlgHom R ⟨FreeAlgebra.lift R x, by
    intro a b h
    cases h with
    | quadratic c => simpa using hq c
    | braid => simpa using hb⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hecke/G2Presentation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hecke/G2Presentation.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7957cc9c617ae4dee881f52ecc930ad328de80ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
