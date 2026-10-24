# restrictDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9728a0748f4c95c966e4007a53773dddcb4edd22acbc614d53efbd3140aac383",
  "kind": "def",
  "lexical_name": "restrictDvd",
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
  "slug": "restrictdvd--b6f2d4ee6ada9ae1e766deb5",
  "source": {
    "blob": "a8020e5fb205aa6a5cc570b04c3f59570ebac5dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6f2d4ee6ada9ae1e766deb52de31e47195e6b4fbe7e64cf68fb529494f71289",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9728a0748f4c95c966e4007a53773dddcb4edd22acbc614d53efbd3140aac383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictDvd (hpq : p ∣ q) : q.Gal →* p.Gal :=
  haveI := Classical.dec (q = 0)
  if hq : q = 0 then 1
  else
    @restrict F _ p _ _ _
      ⟨splits_of_splits_of_dvd (algebraMap F q.SplittingField) hq (SplittingField.splits q) hpq⟩
#align polynomial.gal.restrict_dvd Polynomial.Gal.restrictDvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8020e5fb205aa6a5cc570b04c3f59570ebac5dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
