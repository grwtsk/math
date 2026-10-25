# TM2ComputableInTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92242f30794dea7d3d9ea9252b4abe62b55922a4c7e27b74d426668567002c18",
  "kind": "structure",
  "lexical_name": "TM2ComputableInTime",
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
  "slug": "tm2computableintime--39cffcd68ac7b30136505d31",
  "source": {
    "blob": "d414d6d2a6bf7533aa322554a7dc94ee249f0c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39cffcd68ac7b30136505d319aab34e8d571e12cfaa9761f67cee32fc1aab87f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92242f30794dea7d3d9ea9252b4abe62b55922a4c7e27b74d426668567002c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TM2ComputableInTime {α β : Type} (ea : FinEncoding α) (eb : FinEncoding β)
  (f : α → β) extends TM2ComputableAux ea.Γ eb.Γ where
  time : ℕ → ℕ
  outputsFun :
    ∀ a,
      TM2OutputsInTime tm (List.map inputAlphabet.invFun (ea.encode a))
        (Option.some ((List.map outputAlphabet.invFun) (eb.encode (f a))))
        (time (ea.encode a).length)
#align turing.tm2_computable_in_time Turing.TM2ComputableInTime

/-- A Turing machine + a polynomial time function + a proof it outputs f in at most time(len(input))
steps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d414d6d2a6bf7533aa322554a7dc94ee249f0c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
