# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSDSourceDecomposition.Variant65bc12cc3897ddc42e0ba4cc2b483ff69d0481d6a3f86d5e18c559e7da227739

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f4e5918f93327491f52be2a81841f71d920b0f6` · SHA-256 `65bc12cc3897ddc42e0ba4cc2b483ff69d0481d6a3f86d5e18c559e7da227739`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.BSDRankIdentity
import Think.SourceTree.Legacy.Arithmetic.SpecialTheoremSources

set_option autoImplicit false

namespace Think.Arithmetic.BSDSourceDecomposition
open Think.Arithmetic.SpecialTheoremSources

structure AlgebraicRankSurface where
  curve : Think.Arithmetic.EllipticCurveSurface
  rankSymbol : String
  mordellWeilSurface : Think.Arithmetic.MordellWeilSurface
deriving Repr, DecidableEq

structure AnalyticRankSurface where
  curve : Think.Arithmetic.EllipticCurveSurface
  lFunction : Think.Arithmetic.HasseWeilLFunctionSurface
  orderOfVanishingSymbol : String
deriving Repr, DecidableEq

structure BSDRankBridgeSurface where
  algebraic : AlgebraicRankSurface
  analytic : AnalyticRankSurface
  bridgeLabel : String
deriving Repr, DecidableEq

def bsdRankBridgeClaim (_s : BSDRankBridgeSurface) : Prop := True

def bsdGeneralBridgeResidue (_s : BSDRankBridgeSurface) : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "bsd.rank_bridge.general"
    kind := FWR.ResidueKind.conjecturalAtom
    blocks := "general BSD rank bridge remains conjectural without a checked theorem proof/import"
    clearsBy := "checked proof/import for the exact BSD rank bridge or retained conjectural annotation" }

def coatesWilesSourceSurface : ArithmeticTheoremSource := coatesWiles1977
def grossZagierSourceSurface : ArithmeticTheoremSource := grossZagier1986
def kolyvaginSourceSurface : ArithmeticTheoremSource := kolyvagin1989
def rubinSourceSurface : ArithmeticTheoremSource := rubin1991

theorem gross_zagier_is_bsd_special_case :
    grossZagierSourceSurface.sourceKind = ArithmeticSourceKind.bsdSpecialCase := by
  rfl

theorem kolyvagin_is_bsd_special_case :
    kolyvaginSourceSurface.sourceKind = ArithmeticSourceKind.bsdSpecialCase := by
  rfl

theorem rubin_is_iwasawa_surface :
    rubinSourceSurface.sourceKind = ArithmeticSourceKind.iwasawa := by
  rfl

theorem special_sources_not_imported :
    coatesWilesSourceSurface.authorityStatus =
      SourceAuthorityStatus.externalTheoremNotImported ∧
    grossZagierSourceSurface.authorityStatus =
      SourceAuthorityStatus.externalTheoremNotImported ∧
    kolyvaginSourceSurface.authorityStatus =
      SourceAuthorityStatus.externalTheoremNotImported ∧
    rubinSourceSurface.authorityStatus =
      SourceAuthorityStatus.externalTheoremNotImported := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end Think.Arithmetic.BSDSourceDecomposition
```
