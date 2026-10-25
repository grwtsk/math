# intervalNormCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:835414a6843f8c8e1cc30c3172ad64999107378b921887bf56e5457c6a465c2a",
  "kind": "def",
  "lexical_name": "intervalNormCore",
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
  "slug": "intervalnormcore--0a9c854998931f2cb940bc05",
  "source": {
    "blob": "78674d6b948779156e741155f9118c4799b62933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a9c854998931f2cb940bc0533dcfae163f3a1fae3b5782940cd15752f1aad0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:835414a6843f8c8e1cc30c3172ad64999107378b921887bf56e5457c6a465c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intervalNormCore : TacticM Unit := do
  try
    intervalNormSafeSimp
  catch _ =>
    pure ()
  try
    intervalNormGoalSimp
  catch _ =>
    pure ()
  -- Try to normalize the outermost variable to Set.Icc form.
  -- The parser handles mixed forms, so partial normalization is fine for multivariate goals.
  discard <| tryNormalizeGoalToIcc

/-- The interval_norm tactic.

    Normalizes inequalities, subtraction, rational division, and domain syntax
    to reduce goal-shape variation before parsing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78674d6b948779156e741155f9118c4799b62933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
