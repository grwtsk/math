# AddChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7f4f0f5f6f04a4cd6f0ed4fea6e7b6b9e42b587e7bfb7bf38dd90b4e4366fef",
  "kind": "def",
  "lexical_name": "AddChar",
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
  "slug": "addchar--71e02f7843c333cd23dd90ca",
  "source": {
    "blob": "b70aea8e3745ab061bd55311edd9ff3ef3bd909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71e02f7843c333cd23dd90ca0bc8c44e31b4d50a61c128acb4b30c00261ad848",
  "verification": {
    "reference": "docs/verification/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7f4f0f5f6f04a4cd6f0ed4fea6e7b6b9e42b587e7bfb7bf38dd90b4e4366fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddChar : Type max u v :=
  Multiplicative R →* R'
#align add_char AddChar

end AddCharDef

namespace AddChar

-- Porting note(https://github.com/leanprover-community/mathlib4/issues/5020): added
section DerivedInstances

variable (R : Type u) [AddMonoid R] (R' : Type v) [CommMonoid R']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70aea8e3745ab061bd55311edd9ff3ef3bd909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
