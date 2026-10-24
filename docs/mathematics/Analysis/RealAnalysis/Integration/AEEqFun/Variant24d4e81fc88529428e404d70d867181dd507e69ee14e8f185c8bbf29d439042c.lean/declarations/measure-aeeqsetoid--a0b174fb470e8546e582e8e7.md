# Measure.aeEqSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b38a93b143784707e5885e45bf20304c6210bc172b8f1107b930ad9638450177",
  "kind": "def",
  "lexical_name": "Measure.aeEqSetoid",
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
  "slug": "measure-aeeqsetoid--a0b174fb470e8546e582e8e7",
  "source": {
    "blob": "72aaa222298ac5f791129517dd28850d74ea3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0b174fb470e8546e582e8e70846d5bcbfa87f468771da318609abad3b517b6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b38a93b143784707e5885e45bf20304c6210bc172b8f1107b930ad9638450177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Measure.aeEqSetoid (μ : Measure α) : Setoid { f : α → β // AEStronglyMeasurable f μ } :=
  ⟨fun f g => (f : α → β) =ᵐ[μ] g, fun {f} => ae_eq_refl f.val, fun {_ _} => ae_eq_symm,
    fun {_ _ _} => ae_eq_trans⟩

variable (α)

/-- The space of equivalence classes of almost everywhere strongly measurable functions, where two
strongly measurable functions are equivalent if they agree almost everywhere, i.e.,
they differ on a set of measure `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72aaa222298ac5f791129517dd28850d74ea3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
