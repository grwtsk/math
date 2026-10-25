# Lists'.Subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9352948c354e3dedbaf02ef3cac049bf4777a7da0976e0a245f8081673dac63",
  "kind": "inductive",
  "lexical_name": "Lists'.Subset",
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
  "slug": "lists-subset--5be37cd30746b40bc41f7003",
  "source": {
    "blob": "0e2705f143e8670707527e007224551da47ac3c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5be37cd30746b40bc41f70030551a506e0a59f36b86ca22454617c74f8fdd2ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9352948c354e3dedbaf02ef3cac049bf4777a7da0976e0a245f8081673dac63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  inductive Lists'.Subset : Lists' α true → Lists' α true → Prop
    | nil {l} : Lists'.Subset Lists'.nil l
    | cons {a a' l l'} :
      Lists.Equiv a a' →
        a' ∈ Lists'.toList l' → Lists'.Subset l l' → Lists'.Subset (Lists'.cons a l) l'
end
#align lists.equiv Lists.Equiv
#align lists'.subset Lists'.Subset

local infixl:50 " ~ " => Lists.Equiv

/-- Equivalence of ZFA lists. Defined inductively. -/
add_decl_doc Lists.Equiv

/-- Subset relation for ZFA lists. Defined inductively. -/
add_decl_doc Lists'.Subset

namespace Lists'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e2705f143e8670707527e007224551da47ac3c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
