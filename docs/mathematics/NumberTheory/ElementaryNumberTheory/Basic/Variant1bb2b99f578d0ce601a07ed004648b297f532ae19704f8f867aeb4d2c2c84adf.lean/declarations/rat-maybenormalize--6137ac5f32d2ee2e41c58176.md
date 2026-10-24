# Rat.maybeNormalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab55d1a8e3e64f948d210ea5eac14826bc1fd67582f72d8447d6c4def8b79eaf",
  "kind": "def",
  "lexical_name": "Rat.maybeNormalize",
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
  "slug": "rat-maybenormalize--6137ac5f32d2ee2e41c58176",
  "source": {
    "blob": "51633e5745d577d3a35be26bb1f2f6978a245ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6137ac5f32d2ee2e41c58176f47dc125104cb0a055d9d731a6b19d0739ae9c70",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab55d1a8e3e64f948d210ea5eac14826bc1fd67582f72d8447d6c4def8b79eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def Rat.maybeNormalize (num : Int) (den g : Nat)
    (dvd_num : ↑g ∣ num) (dvd_den : g ∣ den) (den_nz : den / g ≠ 0)
    (reduced : (num / g).natAbs.Coprime (den / g)) : Rat :=
  if hg : g = 1 then
    { num, den
      den_nz := by simp [hg] at den_nz; exact den_nz
      reduced := by simp [hg, Int.natAbs_natCast] at reduced; exact reduced }
  else { num := num.divExact g dvd_num, den := den.divExact g dvd_den, den_nz, reduced }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51633e5745d577d3a35be26bb1f2f6978a245ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
