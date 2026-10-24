# Spectral.prismaticHilbertInput_to_prismaticTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90cbd4e58cddfde798422621583cf5d5f30fb63c41e51bbdb6a40a75e7a040f0",
  "kind": "def",
  "lexical_name": "Spectral.prismaticHilbertInput_to_prismaticTheoremInput",
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
  "slug": "spectral-prismatichilbertinput-to-prismatictheoreminput--d0af107a099908e0b124e42f",
  "source": {
    "blob": "51641d68a73283c564ed5dc688e0e4d4d0d3d7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 256,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0af107a099908e0b124e42f66f3bb60d7b87ea531b62dcb8488ccf210560ed2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90cbd4e58cddfde798422621583cf5d5f30fb63c41e51bbdb6a40a75e7a040f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spectral.prismaticHilbertInput_to_prismaticTheoremInput
    {p : Nat}
    {P : Prismatic.BoundedPrism.{u} p}
    {X : Prismatic.PadicFormalScheme}
    {C : Prismatic.PrismaticCohomology P X}
    (I : Spectral.PrismaticHilbertTheoremInput.{u, v}
      (P := P) (X := X) (C := C)) :
    Spectral.PrismaticTheoremInput.{u} := by
  cases hseed : I.embedding.embedding.hodgeTateSeed? with
  | none =>
      have hfalse :
          False := by
        have hsome :=
          Spectral.prismaticHilbertInput_has_hodgeTateSeed
            I
        simp [hseed] at hsome
      exact False.elim hfalse
  | some seed =>
      exact {
        hodgeTateSeed := ⟨seed⟩
        boundary := I.boundary
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51641d68a73283c564ed5dc688e0e4d4d0d3d7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
