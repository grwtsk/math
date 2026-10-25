# trNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f55a243e0d6209a228aa94e0ddf6cbcff036d0f47ca9300e3d73a255646e32b5",
  "kind": "def",
  "lexical_name": "trNormal",
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
  "slug": "trnormal--592bc6ebb7af259c3abe4ac0",
  "source": {
    "blob": "f4ba02815758cfb9698061c15a805920126e3787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:592bc6ebb7af259c3abe4ac04d51427067d3b15b5c749f42d12c78f64b0234bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f55a243e0d6209a228aa94e0ddf6cbcff036d0f47ca9300e3d73a255646e32b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trNormal : TM2.Stmt Γ Λ σ → TM1.Stmt (Γ' K Γ) (Λ' K Γ Λ σ) σ
  | TM2.Stmt.push k f q => goto fun _ _ ↦ go k (StAct.push f) q
  | TM2.Stmt.peek k f q => goto fun _ _ ↦ go k (StAct.peek f) q
  | TM2.Stmt.pop k f q => goto fun _ _ ↦ go k (StAct.pop f) q
  | TM2.Stmt.load a q => load (fun _ ↦ a) (trNormal q)
  | TM2.Stmt.branch f q₁ q₂ => branch (fun _ ↦ f) (trNormal q₁) (trNormal q₂)
  | TM2.Stmt.goto l => goto fun _ s ↦ normal (l s)
  | TM2.Stmt.halt => halt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba02815758cfb9698061c15a805920126e3787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
