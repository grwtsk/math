# IwasawaStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b43155f461d0e36921cc3e062e449c2c1e37564c2e53fe15f4552d467fbdb29",
  "kind": "structure",
  "lexical_name": "IwasawaStructure",
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
  "slug": "iwasawastructure--b566d8a8ee864dea8497a26a",
  "source": {
    "blob": "9f586bc8b64591c8ca707427c1747d87fda5f619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b566d8a8ee864dea8497a26a725265015f0aa5137a53e140fd4291a27d69acff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b43155f461d0e36921cc3e062e449c2c1e37564c2e53fe15f4552d467fbdb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IwasawaStructure where
  /-- The subgroups of the Iwasawa structure -/
  T : α → Subgroup M
  /-- The commutativity property of the subgroups -/
  is_comm : ∀ x : α, IsMulCommutative (T x)
  /-- The conjugacy property of the subgroups -/
  is_conj : ∀ g : M, ∀ x : α, T (g • x) = MulAut.conj g • T x
  /-- The subgroups generate the group -/
  is_generator : iSup T = ⊤

variable {M α}

namespace IwasawaStructure

/-- The Iwasawa criterion : If a quasiprimitive action of a group G on X
  has an Iwasawa structure, then any normal subgroup that acts nontrivially
  contains the group of commutators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f586bc8b64591c8ca707427c1747d87fda5f619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
