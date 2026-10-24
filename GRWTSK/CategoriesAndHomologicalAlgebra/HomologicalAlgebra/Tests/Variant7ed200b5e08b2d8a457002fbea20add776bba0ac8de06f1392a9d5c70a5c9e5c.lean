import BitMatrix.Tests
import FilesystemCodec.Tests
import FilesystemHomology.Tests
import DAF.Integration.CausalObserverTests
import DAF.Integration.ArchitectureTests
import DAF.Integration.ComparisonTests
import DAF.Integration.DeterminantTests
import DAF.Integration.TilingArithmeticComparison
import DAF.Integration.FabricTests
import DAF.Integration.FabricReactionTests
import DAF.Integration.FabricRuntimeTests
import DAF.Integration.PrismaticFabricTests
import DAF.Integration.GlobalReferenceTests
import DAF.Integration.WindowFusionTests
import DAF.Integration.RasterizationTests
import DAF.Integration.AvalanchePartitionTests
import DAF.Integration.SurgeryCoherenceTests
import DAF.Integration.CurvatureDiffusionTests
import DAF.Integration.WorldModelPrototypeTests
import DAF.Tests.GroundedLanguage
import DAF.Tests.RhetoricalHilbert
import DAF.Tests.RhetoricalFormalIntegration
import Surface.SmoothFramedSurgery.Tests
import Surface.CosmeticSurgery.Tests
def main : IO Unit :=
  BitMatrix.Tests.Core.run <* IO.println "All BitMatrix tests passed."
