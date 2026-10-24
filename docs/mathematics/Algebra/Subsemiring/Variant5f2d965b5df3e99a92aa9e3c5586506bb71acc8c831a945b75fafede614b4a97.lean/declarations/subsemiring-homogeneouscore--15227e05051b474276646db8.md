# Subsemiring.homogeneousCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58c5b5300f7b10d677ece77e6d2eda626b5d6e687ff3f71e6fc465c7721f9bdf",
  "kind": "def",
  "lexical_name": "Subsemiring.homogeneousCore",
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
  "slug": "subsemiring-homogeneouscore--15227e05051b474276646db8",
  "source": {
    "blob": "0ec73b22210ccfa517e7ba79f391ba49a64c5cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 123,
    "path": "GRWTSK/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15227e05051b474276646db81c96db108d96786552aa4a908d4484761e672a20",
  "verification": {
    "reference": "docs/verification/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58c5b5300f7b10d677ece77e6d2eda626b5d6e687ff3f71e6fc465c7721f9bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subsemiring.homogeneousCore : HomogeneousSubsemiring 𝒜 where
  __ := Subsemiring.closure ((↑) '' (((↑) : Subtype (IsHomogeneousElem 𝒜) → A) ⁻¹' R))
  is_homogeneous' := IsHomogeneous.subsemiringClosure_of_isHomogeneousElem fun x ↦ by
    rintro ⟨x, _, rfl⟩; exact x.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec73b22210ccfa517e7ba79f391ba49a64c5cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
