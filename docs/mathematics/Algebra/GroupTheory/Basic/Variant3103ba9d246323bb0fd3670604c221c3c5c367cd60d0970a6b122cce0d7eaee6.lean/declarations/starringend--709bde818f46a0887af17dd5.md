# starRingEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac54fec484efbe8a08fd57e54a6956ac72f5d113cd4cb1984c3c2ca97d5ea6e",
  "kind": "def",
  "lexical_name": "starRingEnd",
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
  "slug": "starringend--709bde818f46a0887af17dd5",
  "source": {
    "blob": "bed47465b009816e4394655fddb3319e4c22bd76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 351,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:709bde818f46a0887af17dd5e8fd37043d4b8061fb3d20cd229894d046177708",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac54fec484efbe8a08fd57e54a6956ac72f5d113cd4cb1984c3c2ca97d5ea6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starRingEnd : R →+* R where
  toFun := star
  __ := (@starRingAut R _ _).toRingHom

@[inherit_doc]
scoped[ComplexConjugate] notation "conj" => starRingEnd _

/-- This is not a simp lemma, since we usually want simp to keep `starRingEnd` bundled.
For example, for complex conjugation, we don't want simp to turn `conj x`
into the bare function `star x` automatically since most lemmas are about `conj x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bed47465b009816e4394655fddb3319e4c22bd76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
