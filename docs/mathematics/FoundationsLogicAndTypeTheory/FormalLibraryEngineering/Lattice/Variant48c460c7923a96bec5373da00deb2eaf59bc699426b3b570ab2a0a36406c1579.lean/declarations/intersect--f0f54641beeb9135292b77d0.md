# intersect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23a30357568523272d16b2ddfb2b7004d7b3e2e8e0102daa6f3c6973e21d2e3f",
  "kind": "def",
  "lexical_name": "intersect",
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
  "slug": "intersect--f0f54641beeb9135292b77d0",
  "source": {
    "blob": "a02de2374f8e63656a3bdb9403e999c9fcc2f204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0f54641beeb9135292b77d08f54d05a85a2c936db6e06da024da35bc722b513",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23a30357568523272d16b2ddfb2b7004d7b3e2e8e0102daa6f3c6973e21d2e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intersect {α : Type} {xs : List α}
    (left right : Slice xs) : Slice xs :=
  if h : intersectStart left right ≤ intersectEnd left right then
    { start := intersectStart left right
      len := intersectEnd left right - intersectStart left right
      valid := by
        have hfinish : intersectEnd left right ≤ xs.length := by
          unfold intersectEnd
          exact Nat.le_trans
            (Nat.min_le_left left.endExclusive right.endExclusive)
            (endExclusive_le_length left)
        rw [Nat.add_sub_of_le h]
        exact hfinish }
  else
    { start := intersectStart left right
      len := 0
      valid := by
        unfold intersectStart
        have hleft := start_le_length left
        have hright := start_le_length right
        omega }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a02de2374f8e63656a3bdb9403e999c9fcc2f204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
