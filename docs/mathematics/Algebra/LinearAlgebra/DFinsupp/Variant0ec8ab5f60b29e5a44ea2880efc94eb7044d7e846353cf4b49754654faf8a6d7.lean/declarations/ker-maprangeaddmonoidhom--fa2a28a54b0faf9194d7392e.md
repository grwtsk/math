# ker_mapRangeAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad076ff5-2de0-0a2a-b21e-890ab4d0f4bd",
  "kind": "lemma",
  "lexical_name": "ker_mapRangeAddMonoidHom",
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
  "slug": "ker-maprangeaddmonoidhom--fa2a28a54b0faf9194d7392e",
  "source": {
    "blob": "aacb59887a4ddaaae0275b3e52b5ac621ebde6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 314,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa2a28a54b0faf9194d7392ec7f61580accf33ad45ab778b32dbd9bbadcf1791",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad076ff5-2de0-0a2a-b21e-890ab4d0f4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_mapRangeAddMonoidHom
    [∀ i, AddCommGroup (β₁ i)] [∀ i, AddCommMonoid (β₂ i)] (f : ∀ i, β₁ i →+ β₂ i) :
    (mapRange.addMonoidHom f).ker =
      (AddSubgroup.pi Set.univ (f · |>.ker)).comap coeFnAddMonoidHom :=
  AddSubgroup.toAddSubmonoid_injective <| mker_mapRangeAddMonoidHom f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aacb59887a4ddaaae0275b3e52b5ac621ebde6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
