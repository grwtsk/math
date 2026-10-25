# _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.FirstOrder.Language.Theory.fieldOfChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:316481b1bbd7d3b855843ae221195d3a72d72fb3c47006d6225619c78c08c083",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.FirstOrder.Language.Theory.fieldOfChar",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-modeltheory-eqzero-variantc1ee--8bdd9c8da1fc0b3133c27065",
  "source": {
    "blob": "26fcf8157d79417016ca7d9bf610afa6324974a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bdd9c8da1fc0b3133c27065a560f5db8f44d264bbafd3bb91fc1766602ecb63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:316481b1bbd7d3b855843ae221195d3a72d72fb3c47006d6225619c78c08c083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.FirstOrder.Language.Theory.fieldOfChar (p : ℕ) : Language.ring.Theory :=
  Theory.field ∪
  if p = 0
  then (fun q => ∼(eqZero q)) '' {q : ℕ | q.Prime}
  else if p.Prime then {eqZero p}
  else {⊥}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26fcf8157d79417016ca7d9bf610afa6324974a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
