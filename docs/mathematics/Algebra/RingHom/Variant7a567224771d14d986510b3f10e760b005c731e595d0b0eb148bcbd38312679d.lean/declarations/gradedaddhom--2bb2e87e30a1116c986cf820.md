# gradedAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ad149f56ecafd9e1253ed65fee2da572ebc59c949848d8c290e9d8fe9eac421",
  "kind": "def",
  "lexical_name": "gradedAddHom",
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
  "slug": "gradedaddhom--2bb2e87e30a1116c986cf820",
  "source": {
    "blob": "42c474e42372ebeb049d0184d1a834a9cfab2c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 268,
    "path": "GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bb2e87e30a1116c986cf820659fd2f68ae317a7edba7ea54da4dc5b3933d551",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ad149f56ecafd9e1253ed65fee2da572ebc59c949848d8c290e9d8fe9eac421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def gradedAddHom [AddSubmonoidClass σ A] [AddSubmonoidClass τ B]
    (f : 𝒜 →+*ᵍ ℬ) (i : ι) : 𝒜 i →+ ℬ i where
  toFun x := ⟨f x, map_mem f x.2⟩
  map_zero' := by ext; simp
  map_add' x y := by ext; simp

/-- A graded ring homomorphism descends to a ring homomorphism on the zeroth component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c474e42372ebeb049d0184d1a834a9cfab2c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
